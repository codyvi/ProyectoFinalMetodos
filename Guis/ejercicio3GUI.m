function varargout = ejercicio3GUI(varargin)
% EJERCICIO3GUI MATLAB code for ejercicio3GUI.fig
%      EJERCICIO3GUI, by itself, creates a new EJERCICIO3GUI or raises the existing
%      singleton*.
%
%      H = EJERCICIO3GUI returns the handle to a new EJERCICIO3GUI or the handle to
%      the existing singleton*.
%
%      EJERCICIO3GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EJERCICIO3GUI.M with the given input arguments.
%
%      EJERCICIO3GUI('Property','Value',...) creates a new EJERCICIO3GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ejercicio3GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ejercicio3GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ejercicio3GUI

% Last Modified by GUIDE v2.5 05-May-2019 16:49:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ejercicio3GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @ejercicio3GUI_OutputFcn, ...
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
end 

% --- Executes just before ejercicio3GUI is made visible.
function ejercicio3GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ejercicio3GUI (see VARARGIN)

% Choose default command line output for ejercicio3GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ejercicio3GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

end
% --- Outputs from this function are returned to the command line.
function varargout = ejercicio3GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

end

function Rangomax_Callback(hObject, eventdata, handles)
% hObject    handle to Rangomax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rangomax as text
%        str2double(get(hObject,'String')) returns contents of Rangomax as a double

end
% --- Executes during object creation, after setting all properties.
function Rangomax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rangomax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end

function Rangomin_Callback(hObject, eventdata, handles)
% hObject    handle to Rangomin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rangomin as text
%        str2double(get(hObject,'String')) returns contents of Rangomin as a double
end

% --- Executes during object creation, after setting all properties.
function Rangomin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rangomin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end

function puntos_Callback(hObject, eventdata, handles)
% hObject    handle to puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of puntos as text
%        str2double(get(hObject,'String')) returns contents of puntos as a double
end

% --- Executes during object creation, after setting all properties.
function puntos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to puntos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on button press in Calcular.
function Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
min = str2double(get(handles.Rangomin, 'string'));
max = str2double(get(handles.Rangomax, 'string'));
numInt = str2double(get(handles.puntos, 'string'));

hold on;
   tic;
    syms y(x);
    y(x) = piecewise(-7<x<=5, -x, 5<x<7, 2.*x-10, x>7, x.^2);
        d = linspace(min, max, numInt);
     plot(d,y(d))
     
     syms h(x);
    h(x) = piecewise(x<3, 2, 5<x<20, log(x), x>23, exp(x));
     e = linspace(min, max, numInt);
     plot(e,h(e))
     
     syms g(x);
    g(x) = piecewise(x<-3, 2, -3<=x<=11, x./2, x>11, 3);
     f = linspace(min, max, numInt);
     plot(f,g(f))
     time1 =toc;
     
    tic;
    curve = animatedline('Color','r','Marker', 'none');
    curve2 = animatedline('Color','b','Marker', 'none');
    curve3 = animatedline('Color','g','Marker', 'none');
    for i =min : (max-min)/numInt:max
         if i <=5 && i>-7
             addpoints(curve,i,-i);
             drawnow limitrate
             pause(0);
         end
         if  5<i && i<7
             addpoints(curve,i,2*i-10);
             drawnow limitrate
             pause(0);
         end
         if i>7
             addpoints(curve,i,i^2);
             drawnow limitrate
             pause(0);
         end
    end
        
         for j =min : (max-min)/numInt:max
         if j <3
             addpoints(curve2,j,2);
             drawnow limitrate
             pause(0);
         end
         if  5<j && j<=20
             addpoints(curve2,j,log(j));
             drawnow limitrate
             pause(0);
         end
         if j>23
             addpoints(curve2,j,exp(j));
             drawnow limitrate
             pause(0); 
         end
         end
    
         
          for k =min : (max-min)/numInt:max
         if  k<-3
             addpoints(curve3,k,11);
             drawnow limitrate
             pause(0);
         end
         if  -3<k && k<=11
             addpoints(curve3,k,k/2);
             drawnow limitrate
             pause(0);
         end
         if k>11
             addpoints(curve3,k,3);
             drawnow limitrate
             pause(0);
         end
          end
         time2 =toc;
         
         set(handles.Time1,'string', time1);
         set(handles.time2,'string', time2);
end


% --- Executes on button press in Limpiar.
function Limpiar_Callback(hObject, eventdata, handles)
% hObject    handle to Limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)
end

% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Menu
close(ejercicio3GUI)
end
