function varargout = ejercicio5(varargin)
% EJERCICIO5 MATLAB code for ejercicio5.fig
%      EJERCICIO5, by itself, creates a new EJERCICIO5 or raises the existing
%      singleton*.
%
%      H = EJERCICIO5 returns the handle to a new EJERCICIO5 or the handle to
%      the existing singleton*.
%
%      EJERCICIO5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EJERCICIO5.M with the given input arguments.
%
%      EJERCICIO5('Property','Value',...) creates a new EJERCICIO5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ejercicio5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ejercicio5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ejercicio5

% Last Modified by GUIDE v2.5 05-May-2019 22:03:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ejercicio5_OpeningFcn, ...
                   'gui_OutputFcn',  @ejercicio5_OutputFcn, ...
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


% --- Executes just before ejercicio5 is made visible.
function ejercicio5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ejercicio5 (see VARARGIN)

% Choose default command line output for ejercicio5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ejercicio5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ejercicio5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function funcion_Callback(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of funcion as text
%        str2double(get(hObject,'String')) returns contents of funcion as a double


% --- Executes during object creation, after setting all properties.
function funcion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iteraciones_Callback(hObject, eventdata, handles)
% hObject    handle to iteraciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iteraciones as text
%        str2double(get(hObject,'String')) returns contents of iteraciones as a double


% --- Executes during object creation, after setting all properties.
function iteraciones_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iteraciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dimensiones_Callback(hObject, eventdata, handles)
% hObject    handle to dimensiones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dimensiones as text
%        str2double(get(hObject,'String')) returns contents of dimensiones as a double


% --- Executes during object creation, after setting all properties.
function dimensiones_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dimensiones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maximo_Callback(hObject, eventdata, handles)
% hObject    handle to maximo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maximo as text
%        str2double(get(hObject,'String')) returns contents of maximo as a double


% --- Executes during object creation, after setting all properties.
function maximo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maximo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function minimo_Callback(hObject, eventdata, handles)
% hObject    handle to minimo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of minimo as text
%        str2double(get(hObject,'String')) returns contents of minimo as a double


% --- Executes during object creation, after setting all properties.
function minimo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to minimo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hmcr_Callback(hObject, eventdata, handles)
% hObject    handle to hmcr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hmcr as text
%        str2double(get(hObject,'String')) returns contents of hmcr as a double


% --- Executes during object creation, after setting all properties.
function hmcr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hmcr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bw_Callback(hObject, eventdata, handles)
% hObject    handle to bw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bw as text
%        str2double(get(hObject,'String')) returns contents of bw as a double


% --- Executes during object creation, after setting all properties.
function bw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function par_Callback(hObject, eventdata, handles)
% hObject    handle to par (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of par as text
%        str2double(get(hObject,'String')) returns contents of par as a double


% --- Executes during object creation, after setting all properties.
function par_CreateFcn(hObject, eventdata, handles)
% hObject    handle to par (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function soluciones_Callback(hObject, eventdata, handles)
% hObject    handle to soluciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of soluciones as text
%        str2double(get(hObject,'String')) returns contents of soluciones as a double


% --- Executes during object creation, after setting all properties.
function soluciones_CreateFcn(hObject, eventdata, handles)
% hObject    handle to soluciones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in boton.
function boton_Callback(hObject, eventdata, handles)
% hObject    handle to boton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f = get(handles.funcion, 'String');
% f = str2func(f);
iter = get(handles.iteraciones, 'String');
dim = get(handles.dimensiones, 'String');
hmcr = get(handles.hmcr, 'String');
bw = get(handles.bw, 'String');
par = get(handles.par, 'String');
sol = get(handles.soluciones, 'String');
max = get(handles.maximo, 'String');
min = get(handles.minimo, 'String');
[bestIndex, bestValue, bestSol, bestSolVal] = metodo5(f, iter, dim, hmcr, bw, par, sol, max, min);
plot(handles.axes1, bestIndex, bestValue)
set(handles.bestSol, 'String', bestSol)
set(handles.bestSolVal, 'String', bestSolVal)
disp('Mejor solución')
disp(bestSol)
disp('Valor de la mejor solución')
disp(bestSolVal)




% --- Executes on key press with focus on boton and none of its controls.
function boton_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to boton (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function boton_CreateFcn(hObject, eventdata, handles)
% hObject    handle to boton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in regresar.
function regresar_Callback(hObject, eventdata, handles)
% hObject    handle to regresar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Menu
close(ejercicio5)
