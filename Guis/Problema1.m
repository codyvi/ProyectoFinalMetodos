function varargout = Problema1(varargin)
% PROBLEMA1 MATLAB code for Problema1.fig
%      PROBLEMA1, by itself, creates a new PROBLEMA1 or raises the existing
%      singleton*.
%
%      H = PROBLEMA1 returns the handle to a new PROBLEMA1 or the handle to
%      the existing singleton*.
%
%      PROBLEMA1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROBLEMA1.M with the given input arguments.
%
%      PROBLEMA1('Property','Value',...) creates a new PROBLEMA1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Problema1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Problema1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Problema1

% Last Modified by GUIDE v2.5 01-May-2019 18:16:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Problema1_OpeningFcn, ...
                   'gui_OutputFcn',  @Problema1_OutputFcn, ...
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


% --- Executes just before Problema1 is made visible.
function Problema1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Problema1 (see VARARGIN)

% Choose default command line output for Problema1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Problema1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Problema1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;





% --- Executes on button press in MatrizDada.
function MatrizDada_Callback(hObject, eventdata, handles)
Mdigitada =[
     2     4     6     8    10    12
     1     5     9    13    17    21
     3     0    -3    -6    -9   -12
     4    16    36    64   100   144
     3    15    27    39    51    63];
 set(handles.text2, 'Data',Mdigitada);



% --- Executes on button press in MatrizVectores.
function MatrizVectores_Callback(hObject, eventdata, handles)
MVectores = [2: 2: 12; 1: 4: 21; 3:-3:-12; (2:2:12).*(2:2:12) ;3:12:63];
 set(handles.uitable3, 'Data',MVectores);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Menu
close(Problema1)
