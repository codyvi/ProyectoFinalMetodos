function varargout = Problema2(varargin)
% PROBLEMA2 MATLAB code for Problema2.fig
%      PROBLEMA2, by itself, creates a new PROBLEMA2 or raises the existing
%      singleton*.
%
%      H = PROBLEMA2 returns the handle to a new PROBLEMA2 or the handle to
%      the existing singleton*.
%
%      PROBLEMA2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROBLEMA2.M with the given input arguments.
%
%      PROBLEMA2('Property','Value',...) creates a new PROBLEMA2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Problema2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Problema2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Problema2

% Last Modified by GUIDE v2.5 02-May-2019 09:09:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Problema2_OpeningFcn, ...
                   'gui_OutputFcn',  @Problema2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Problema2 is made visible.
function Problema2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Problema2 (see VARARGIN)

% Choose default command line output for Problema2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Problema2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Problema2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in JugarBoton.
function JugarBoton_Callback(hObject, eventdata, handles)
% hObject    handle to JugarBoton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cara1 = randi([1,6], 1,1);
cara2 = randi([1,6],1,1);
set(handles.text2, 'String', cara1);
set(handles.text3, 'String', cara2);

suma = cara1 + cara2;
set(handles.text8, 'String', suma);

sumanueva = 0;

if(suma == 2 || suma == 3 || suma == 12)
   %disp('Perdiste!')
else
    while(sumanueva ~= suma)
        cara1 = randi([1,6], 1,1);
        cara2 = randi([1,6], 1,1);
        sumanueva = cara1+cara2;
        if(sumanueva == 7)
            %disp('Perdiste!')
            break
        end 
    end 
end 

if(sumanueva ~= 7)
    %disp('Ganaste!')
end 


% --- Executes on button press in GenerarButton.
function GenerarButton_Callback(hObject, eventdata, handles)
% hObject    handle to GenerarButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)